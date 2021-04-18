package com.example.demo_get.home

import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.example.demo_get.NoteModal
import com.example.demo_get.R
import kotlinx.android.synthetic.main.item_list.view.*

//, var listener: (index: Int, itemNote: NoteModal) -> Unit
class NoteAdapter(var list: List<NoteModal>) : RecyclerView.Adapter<NoteAdapter.ItemViewHolder>() {
    class ItemViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

    }

    var onClickItem: OnClickItem? = null;
    fun setListData(list: List<NoteModal>) {
        this.list = list;
        notifyDataSetChanged();
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ItemViewHolder {
        var view = LayoutInflater.from(parent.context).inflate(R.layout.item_list, parent, false);
        return ItemViewHolder(view);
    }

    override fun getItemCount(): Int {
        return list.size;
    }

    override fun onBindViewHolder(holder: ItemViewHolder, position: Int) {
        holder.itemView.txt_name_item.text = list.get(position).name;
        holder.itemView.txt_value_item.text = list.get(position).value;
        holder.itemView.setOnClickListener({
            onClickItem?.onClick(position);
        })
    }

    interface OnClickItem {
        fun onClick(index: Int);
    }
}

