package com.example.demo_get.home

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.Button
import android.widget.LinearLayout
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.demo_get.NoteModal
import com.example.demo_get.R
import kotlinx.android.synthetic.main.activity_home.*

class HomeActivity : AppCompatActivity(), View.OnClickListener {
    var list: MutableList<NoteModal> = ArrayList()
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_home)
        list.add(NoteModal("a", value = "b"));
        list.add(NoteModal("ab", value = "b"));
        list.add(NoteModal("abc", value = "b"));
        list.add(NoteModal("abc1", value = "b"));
        list.add(NoteModal("abc2", value = "b"));
        list.add(NoteModal("abc3", value = "b"));
        list.add(NoteModal("abc4", value = "b"));
        configGridView()

        btnAdd.setOnClickListener(this);
    }

    private fun configGridView() {
        var adapter = NoteAdapter(list);
        recyclerList.setAdapter(adapter);
        recyclerList.layoutManager = LinearLayoutManager(this, LinearLayoutManager.VERTICAL, false)
        adapter.onClickItem = object : NoteAdapter.OnClickItem {
            override fun onClick(index: Int) {
                Log.e("TAG", "onClick: ${index}")
                list.removeAt(index);
                adapter.setListData(list)
            }

        }
    }

    override fun onClick(v: View?) {
        when (v?.id){
            (R.id.btnAdd) -> {
Log.e("53526352", "btnAdd 74637826478")
            }


        }
    }



}
